; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_stream_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_veu_dev = type { %struct.sh_veu_file*, %struct.sh_veu_file* }
%struct.sh_veu_file = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_veu_dev*, %struct.sh_veu_file*, i32)* @sh_veu_stream_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_veu_stream_init(%struct.sh_veu_dev* %0, %struct.sh_veu_file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_veu_dev*, align 8
  %6 = alloca %struct.sh_veu_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sh_veu_file**, align 8
  store %struct.sh_veu_dev* %0, %struct.sh_veu_dev** %5, align 8
  store %struct.sh_veu_file* %1, %struct.sh_veu_file** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %16 [
    i32 129, label %10
    i32 128, label %13
  ]

10:                                               ; preds = %3
  %11 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %5, align 8
  %12 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %11, i32 0, i32 1
  store %struct.sh_veu_file** %12, %struct.sh_veu_file*** %8, align 8
  br label %19

13:                                               ; preds = %3
  %14 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %5, align 8
  %15 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %14, i32 0, i32 0
  store %struct.sh_veu_file** %15, %struct.sh_veu_file*** %8, align 8
  br label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %35

19:                                               ; preds = %13, %10
  %20 = load %struct.sh_veu_file**, %struct.sh_veu_file*** %8, align 8
  %21 = load %struct.sh_veu_file*, %struct.sh_veu_file** %20, align 8
  %22 = load %struct.sh_veu_file*, %struct.sh_veu_file** %6, align 8
  %23 = icmp eq %struct.sh_veu_file* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %35

25:                                               ; preds = %19
  %26 = load %struct.sh_veu_file**, %struct.sh_veu_file*** %8, align 8
  %27 = load %struct.sh_veu_file*, %struct.sh_veu_file** %26, align 8
  %28 = icmp ne %struct.sh_veu_file* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %35

32:                                               ; preds = %25
  %33 = load %struct.sh_veu_file*, %struct.sh_veu_file** %6, align 8
  %34 = load %struct.sh_veu_file**, %struct.sh_veu_file*** %8, align 8
  store %struct.sh_veu_file* %33, %struct.sh_veu_file** %34, align 8
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %29, %24, %16
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
