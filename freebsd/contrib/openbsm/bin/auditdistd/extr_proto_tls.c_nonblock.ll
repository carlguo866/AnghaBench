; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_nonblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_nonblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_GETFL = common dso_local global i32 0, align 4
@EX_TEMPFAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"fcntl(F_GETFL) failed\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"fcntl(F_SETFL) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @nonblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nonblock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @F_GETFL, align 4
  %6 = call i32 (i32, i32, ...) @fcntl(i32 %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EX_TEMPFAIL, align 4
  %11 = call i32 @pjdlog_exit(i32 %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32, i32* @O_NONBLOCK, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @F_SETFL, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 (i32, i32, ...) @fcntl(i32 %16, i32 %17, i32 %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load i32, i32* @EX_TEMPFAIL, align 4
  %23 = call i32 @pjdlog_exit(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %12
  ret void
}

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @pjdlog_exit(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
