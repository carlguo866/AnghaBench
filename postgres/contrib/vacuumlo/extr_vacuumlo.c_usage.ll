; ModuleID = '/home/carl/AnghaBench/postgres/contrib/vacuumlo/extr_vacuumlo.c_usage.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/vacuumlo/extr_vacuumlo.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [56 x i8] c"%s removes unreferenced large objects from databases.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Usage:\0A  %s [OPTION]... DBNAME...\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"  -l, --limit=LIMIT         commit after removing each LIMIT large objects\0A\00", align 1
@.str.4 = private unnamed_addr constant [86 x i8] c"  -n, --dry-run             don't remove large objects, just show what would be done\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"  -v, --verbose             write a lot of progress messages\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"  -V, --version             output version information, then exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"  -?, --help                show this help, then exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"\0AConnection options:\0A\00", align 1
@.str.9 = private unnamed_addr constant [70 x i8] c"  -h, --host=HOSTNAME       database server host or socket directory\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"  -p, --port=PORT           database server port\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"  -U, --username=USERNAME   user name to connect as\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"  -w, --no-password         never prompt for password\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"  -W, --password            force password prompt\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"Report bugs to <pgsql-bugs@lists.postgresql.org>.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %5)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.9, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
