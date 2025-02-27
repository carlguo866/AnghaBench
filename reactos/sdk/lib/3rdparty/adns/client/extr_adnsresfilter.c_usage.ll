; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adnsresfilter.c_usage.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adnsresfilter.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [651 x i8] c"usage: adnsresfilter [<options ...>]\0A       adnsresfilter  -h|--help | --version\0Aoptions: -t<milliseconds>|--timeout <milliseconds>\0A         -w|--wait        (always wait for queries to time out or fail)\0A         -b|--brackets    (require [...] around IP addresses)\0A         -a|--address     (always include [address] in output)\0A         -u|--unchecked   (do not forward map for checking)\0A         --config <text>  (use this instead of resolv.conf)\0A         --debug          (turn on adns resolver debugging)\0ATimeout is the maximum amount to delay any particular bit of output for.\0ALookups will go on in the background.  Default timeout = 1000 (ms).\0A\00", align 1
@EOF = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"flush stdout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i64 @printf(i8* getelementptr inbounds ([651 x i8], [651 x i8]* @.str, i64 0, i64 0))
  %2 = load i64, i64* @EOF, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @outputerr()
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, i32* @stdout, align 4
  %8 = call i64 @fflush(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 @sysfail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

declare dso_local i64 @printf(i8*) #1

declare dso_local i32 @outputerr(...) #1

declare dso_local i64 @fflush(i32) #1

declare dso_local i32 @sysfail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
