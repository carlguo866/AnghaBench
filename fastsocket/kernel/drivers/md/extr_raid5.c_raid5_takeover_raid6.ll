; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_takeover_raid6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_takeover_raid6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i32, i32 }

@ALGORITHM_LEFT_ASYMMETRIC = common dso_local global i32 0, align 4
@ALGORITHM_RIGHT_ASYMMETRIC = common dso_local global i32 0, align 4
@ALGORITHM_LEFT_SYMMETRIC = common dso_local global i32 0, align 4
@ALGORITHM_RIGHT_SYMMETRIC = common dso_local global i32 0, align 4
@ALGORITHM_PARITY_0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mddev*)* @raid5_takeover_raid6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @raid5_takeover_raid6(%struct.mddev* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  %5 = load %struct.mddev*, %struct.mddev** %3, align 8
  %6 = getelementptr inbounds %struct.mddev, %struct.mddev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %19 [
    i32 133, label %8
    i32 129, label %10
    i32 132, label %12
    i32 128, label %14
    i32 131, label %16
    i32 130, label %18
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @ALGORITHM_LEFT_ASYMMETRIC, align 4
  store i32 %9, i32* %4, align 4
  br label %23

10:                                               ; preds = %1
  %11 = load i32, i32* @ALGORITHM_RIGHT_ASYMMETRIC, align 4
  store i32 %11, i32* %4, align 4
  br label %23

12:                                               ; preds = %1
  %13 = load i32, i32* @ALGORITHM_LEFT_SYMMETRIC, align 4
  store i32 %13, i32* %4, align 4
  br label %23

14:                                               ; preds = %1
  %15 = load i32, i32* @ALGORITHM_RIGHT_SYMMETRIC, align 4
  store i32 %15, i32* %4, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @ALGORITHM_PARITY_0, align 4
  store i32 %17, i32* %4, align 4
  br label %23

18:                                               ; preds = %1
  store i32 130, i32* %4, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call i8* @ERR_PTR(i32 %21)
  store i8* %22, i8** %2, align 8
  br label %37

23:                                               ; preds = %18, %16, %14, %12, %10, %8
  %24 = load %struct.mddev*, %struct.mddev** %3, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 1
  store i32 5, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.mddev*, %struct.mddev** %3, align 8
  %28 = getelementptr inbounds %struct.mddev, %struct.mddev* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mddev*, %struct.mddev** %3, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 3
  store i32 -1, i32* %30, align 4
  %31 = load %struct.mddev*, %struct.mddev** %3, align 8
  %32 = getelementptr inbounds %struct.mddev, %struct.mddev* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.mddev*, %struct.mddev** %3, align 8
  %36 = call i8* @setup_conf(%struct.mddev* %35)
  store i8* %36, i8** %2, align 8
  br label %37

37:                                               ; preds = %23, %19
  %38 = load i8*, i8** %2, align 8
  ret i8* %38
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @setup_conf(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
