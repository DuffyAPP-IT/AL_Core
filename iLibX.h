//
// Created by 010010 on 20/07/2020.
//

#ifndef AGENTLIVE_ILIBX_H
#define AGENTLIVE_ILIBX_H

#include <sys/wait.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <string.h>

int ios_send_f(char *filetosend, char *remotedir);
int ios_fetch_access(char *ipin,char *port);
int ios_run_ge(char *command);
int ios_rec_f(char *remotefiledir, char *localfname);
char *macos_run_comm(char *command);

#endif //AGENTLIVE_ILIBX_H
