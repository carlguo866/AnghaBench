; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rup/extr_rup.c_allhosts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rup/extr_rup.c_allhosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSTATPROG = common dso_local global i32 0, align 4
@RSTATVERS_TIME = common dso_local global i32 0, align 4
@RSTATPROC_STATS = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@xdr_statstime = common dso_local global i64 0, align 8
@rstat_reply = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@RPC_TIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @allhosts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allhosts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @RSTATPROG, align 4
  %4 = load i32, i32* @RSTATVERS_TIME, align 4
  %5 = load i32, i32* @RSTATPROC_STATS, align 4
  %6 = load i64, i64* @xdr_void, align 8
  %7 = trunc i64 %6 to i32
  %8 = load i64, i64* @xdr_statstime, align 8
  %9 = trunc i64 %8 to i32
  %10 = load i64, i64* @rstat_reply, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @clnt_broadcast(i32 %3, i32 %4, i32 %5, i32 %7, i32* null, i32 %9, i32* %1, i32 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @RPC_SUCCESS, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %0
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @RPC_TIMEDOUT, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @clnt_sperrno(i32 %21)
  %23 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %16, %0
  ret void
}

declare dso_local i32 @clnt_broadcast(i32, i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @clnt_sperrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
