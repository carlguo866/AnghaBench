; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_atu_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_atu_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i64 }

@IOETHERSWITCHGETTABLE = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ioctl(IOETHERSWITCHGETTABLE)\00", align 1
@IOETHERSWITCHGETTABLEENTRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c" [%d] %s: portmask 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg*, i32, i8**)* @atu_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atu_dump(%struct.cfg* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i64, align 8
  store %struct.cfg* %0, %struct.cfg** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i8**, i8*** %6, align 8
  %12 = call i32 @bzero(%struct.TYPE_5__* %7, i32 24)
  %13 = load %struct.cfg*, %struct.cfg** %4, align 8
  %14 = getelementptr inbounds %struct.cfg, %struct.cfg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IOETHERSWITCHGETTABLE, align 4
  %17 = call i64 @ioctl(i32 %15, i32 %16, %struct.TYPE_5__* %7)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EX_OSERR, align 4
  %21 = call i32 @err(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %3
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %47, %22
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %23
  %29 = call i32 @bzero(%struct.TYPE_5__* %8, i32 24)
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store i64 %30, i64* %31, align 8
  %32 = load %struct.cfg*, %struct.cfg** %4, align 8
  %33 = getelementptr inbounds %struct.cfg, %struct.cfg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IOETHERSWITCHGETTABLEENTRY, align 4
  %36 = call i64 @ioctl(i32 %34, i32 %35, %struct.TYPE_5__* %8)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %50

39:                                               ; preds = %28
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %42 = bitcast i32* %41 to i8*
  %43 = call i8* @ether_ntoa(i8* %42)
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %40, i8* %43, i32 %45)
  br label %47

47:                                               ; preds = %39
  %48 = load i64, i64* %9, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %23

50:                                               ; preds = %38, %23
  ret i32 1
}

declare dso_local i32 @bzero(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i64, i8*, i32) #1

declare dso_local i8* @ether_ntoa(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
