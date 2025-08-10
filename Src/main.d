import std.stdio;
import std.string : strip, toStringz;
import core.stdc.stdlib : system;

int main(string[] args)
{
    writeln("Welcome to Zash written in D");
    while (true) {
        write("> ");
        auto line = stdin.readln();
        if (line is null) break;
        line = strip(line);
        if (line.length == 0) continue;
        if (line == "exit" || line == "quit") break;
        auto cLine = toStringz(line);
        int status = system(cLine);
        if (status != 0) {
            writeln("Command exited with status ", status);
        }
    }
    return 0;
}
