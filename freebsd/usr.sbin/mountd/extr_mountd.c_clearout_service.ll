; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_clearout_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_clearout_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sock_fdcnt = common dso_local global i32 0, align 4
@sock_fd = common dso_local global i64* null, align 8
@SHUT_RDWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @clearout_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clearout_service() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %28, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @sock_fdcnt, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = load i64*, i64** @sock_fd, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %7, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %6
  %14 = load i64*, i64** @sock_fd, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @SHUT_RDWR, align 4
  %20 = call i32 @shutdown(i64 %18, i32 %19)
  %21 = load i64*, i64** @sock_fd, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @close(i64 %25)
  br label %27

27:                                               ; preds = %13, %6
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %2

31:                                               ; preds = %2
  ret void
}

declare dso_local i32 @shutdown(i64, i32) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
