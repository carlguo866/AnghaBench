; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_macio_asic.c_maciom_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_macio_asic.c_maciom_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.macio_dev = type { i32 }
%struct.macio_devres = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i8*)* @maciom_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maciom_release(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.macio_dev*, align 8
  %6 = alloca %struct.macio_devres*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.macio_dev* @to_macio_device(%struct.device* %9)
  store %struct.macio_dev* %10, %struct.macio_dev** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.macio_devres*
  store %struct.macio_devres* %12, %struct.macio_devres** %6, align 8
  %13 = load %struct.macio_dev*, %struct.macio_dev** %5, align 8
  %14 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @min(i32 %15, i32 32)
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %34, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load %struct.macio_devres*, %struct.macio_devres** %6, align 8
  %23 = getelementptr inbounds %struct.macio_devres, %struct.macio_devres* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.macio_dev*, %struct.macio_dev** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @macio_release_resource(%struct.macio_dev* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %17

37:                                               ; preds = %17
  ret void
}

declare dso_local %struct.macio_dev* @to_macio_device(%struct.device*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @macio_release_resource(%struct.macio_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
