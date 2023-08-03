#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

/**
 * infinite_while - Function that runs an infinite while loop.
 *
 * Return: Always 0.
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - Creates 5 zombie processes.
 *
 * Return: Always 0.
 */
int main(void)
{
	int i;
	pid_t child_pid;

	for (i = 0; i < 5; i++)
	{
		child_pid = fork();

		if (child_pid > 0)
			printf("Zombie process created, PID: %d\n", child_pid);
		else if (child_pid == 0)
			exit(0);
		else
		{
			perror("fork");
			exit(1);
		}
	}
	infinite_while();
	return (0);
}