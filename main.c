#define RELEASE 1
#define DEBUG 1

#define ARRAY_SIZE(x) ( sizeof(x) / sizeof((x)[0]) )

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <zconf.h>
#include "iLibX.h"

void cleanmenu(int note, char *notedata){
    system("clear");
    printf("==================\nAgentLIVE macOS v%d\nDebug is %d\n==================\nLICENSE [DUFFYAPPIT[FREE]]\n==================\n", RELEASE, DEBUG);
    if (note !=0){
        printf("%s\n==================\n", notedata);
    }
}


//Generate Menu Items
const char *mainMenu[] = {"Initialise AgentLIVE Companion",
                          "Fetch Owner Information",
                          "Process Custom Agent",
                          "Clean AL_Core Data From Device"
};

int main(int argc, char *argv[]) {
    cleanmenu(1, "Initialising");
    system("rm -rf SENSETIVE");
    //Check If Client Is Executing From Correct Directory (Resources)
    if (strcmp(argv[0], "~/Documents/AgentLive/AgentLive") == 0) {
        if (DEBUG == 1) {
            printf("EXEC FROM %s\n", argv[0]);
        }
        printf("AgentLive Must Be Executed From ~/Documents/AgentLive...EXIT\n");
        exit(1);
    } else {
        //Exec Directory is correct, continue!
        if (mkdir("SENSETIVE", 0777) == -1) {
            cleanmenu(0, "");
            printf("PRE-EXEC Check Failed -\> SENSETIVE Directory Already Exists And May Contain User Data.\nBackup & Remove SENSETIVE Directory Appropriately Before Executing...\n");
            exit(1);
        } else {
            cleanmenu(1, "Initialising");
            //SENSETIVE Directory Created
            //Check If AL Is In FirstLaunch State...
            if (access(".flaunch", F_OK) != -1) {
                // firstlaunch already passed...
            } else {
                // exec first launch intro...
                if (access("welcome", F_OK) != -1) {
                    system("cat welcome");
                    system("touch .flaunch");
                    //Continue exec...
                } else {
                    printf("Welcome was not available... Did You Copy AgentLIVE Properly?\n");
                    exit(1);
                }
                printf("Press Enter To Accept The User Agreement & Continue...\n");
                //while loop waits for \n/return to be entered to continue execution.
                while (getchar() != '\n');
            }
            cleanmenu(1, "Welcome To AgentLIVE");
            for (int i = 0; i < ARRAY_SIZE(mainMenu); i++) {
                printf("[%d]: %s\n", i + 1, mainMenu[i]);
            }
            char *optchar;
            printf("-> ");
            fgets(&optchar, 50, stdin);
            int opt;
            opt = atoi(&optchar);
            if (opt <= ARRAY_SIZE(mainMenu)) {
                switch (opt) {
                    case 1:
                        cleanmenu(1, "Initialising AgentLive Companion...");
                        if (ios_fetch_access("127.0.0.1", "2222") == 0) {
                            //Tunnel To Device Is Open, Send Companion
                            if(DEBUG==1){
                                printf("Mounting iDevice Disk...\n");
                            }
                            ios_run_ge("mount -o rw,union,update /");
                            if(DEBUG==1){
                                printf("Setting Up AgentLive Directory Structure...\n");
                            }
                            ios_run_ge("rm -rf /AL 2>/dev/null");
                            ios_run_ge("mkdir /AL 2>/dev/null");
                            printf("Sending AgentLive Companion v%d\n",RELEASE);
                            if(ios_send_f("Agent","/")==0){
                                printf("Sent - Configuring Device...\n");
                                if(ios_run_ge("chmod +x /Agent")==0){
                                    sleep(2);
                                    ios_send_f("resources/sqlite3","/usr/bin/");
                                    ios_send_f("resources/sqlite3.h","/usr/include/");
                                    ios_send_f("resources/sqlite3ext.h","/usr/include/");
                                    ios_send_f("resources/libreadline.7.dylib","/usr/lib/");
                                    ios_send_f("resources/libncurses.6.dylib","/usr/lib/");
                                    ios_send_f("resources/tr","/usr/bin/");
                                    ios_send_f("resources/paste","/usr/bin/");
                                    ios_run_ge("ldid -S /usr/bin/sqlite3");
                                    printf("Device Ready!\nWaiting For 8 Seconds & Returning...\n");
                                    sleep(8);
                                    system("./AgentLive");
                                } else{
                                    printf("Error Setting Permissions... Consult AgentLive User Guide\n");
                                    exit(1);
                                }
                                return 0;
                            } else{
                                printf("Error Sending Companion... Consult AgentLive User Guide\n");
                                exit(1);
                            }
                        } else{
                            printf("Connection Failed...\n");
                            return 1;
                        }
                    case 2:
                        cleanmenu(1, "Connecting To AgentLIVE Companion...");
                            printf("Connected (v%d)\n", RELEASE);
                            //Execute Client
                            if(ios_run_ge("/Agent -a 921 -b")==0){
                                printf("Success! Recieving Results...\n");
                                ios_rec_f("/AL/BASIC","SENSETIVE/");
                                ios_rec_f("/AL/LOCATION","SENSETIVE/");
                                ios_rec_f("/AL/ACCOUNTS","SENSETIVE/");

                                //Present
                                printf("START OF DATA\n\n");

                                system("echo 'Device Name:'");
                                system("cat SENSETIVE/BASIC | grep NAME | cut -f1 -d':'");
                                printf("\n");

                                system("echo 'Device Is Running The Following iOS Version:'");
                                system("cat SENSETIVE/BASIC | grep IOSV | cut -f1 -d':'");
                                printf("\n");

                                system("echo 'Associated Accounts:'");
                                system("cat SENSETIVE/ACCOUNTS | cut -f1 -d':' | sort -u");

                                printf("\nEND OF DATA\n");
                                exit(0);
                            } else {
                                printf("Client Error...\n");
                                exit(1);
                            }
                            //Cannot get app usage reliably in BFU so comment out for now...
//                            ios_rec_f("/AL/APPUSAGE","SENSETIVE/");
                            ios_rec_f("/AL/TWITTER","SENSETIVE/");
                    break;
                    case 7:
                        exit(1);
                        break;
                    case 8:
                        cleanmenu(1, "Cleaning AgentLive From Device...");
                        ios_run_ge("rm -rf /AL 2>/dev/null");
                        ios_run_ge("rm /Agent");
                        ios_run_ge("rm /usr/bin/sqlite3");
                        ios_run_ge("rm /usr/bin/tr");
                        ios_run_ge("rm /usr/bin/paste");
                        ios_run_ge("rm /usr/include/sqlite3.h");
                        ios_run_ge("rm /usr/include/sqlite3ext.h");
                        ios_run_ge("rm /usr/lib/libreadline.7.dylib");
                        ios_run_ge("rm /usr/lib/libncurses.6.dylib");
                        printf("Complete!\n");
                        return 0;
                        break;
                    default:
                        printf("Invalid Option...EXIT!\n");
                    exit(1);
                }
                return 0;
                }
            }
        }
        return 0;
    }