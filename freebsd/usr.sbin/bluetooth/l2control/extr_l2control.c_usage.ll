; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/l2control/extr_l2control.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/l2control/extr_l2control.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Usage: l2control [-hn] -a local cmd [params ..]\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Where:\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"  -a local   Specify local device to connect to\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"  -h         Display this message\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"  -n         Show addresses as numbers\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"  cmd        Supported command (see l2control help)\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"  params     Optional command parameters\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @stderr, align 4
  %4 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 @fprintf(i32 %5, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %15 = call i32 @exit(i32 255) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
