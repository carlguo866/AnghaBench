; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd64-agp.c_amd_8151_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd64-agp.c_amd_8151_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_4__* null, align 8
@AMD_NB_GART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @amd_8151_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_8151_configure() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @virt_to_phys(i32 %6)
  store i64 %7, i64* %2, align 8
  %8 = load i32, i32* @AMD_NB_GART, align 4
  %9 = call i32 @amd_nb_has_feature(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %31

12:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %26, %12
  %14 = load i32, i32* %3, align 4
  %15 = call i32 (...) @amd_nb_num()
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = call %struct.TYPE_3__* @node_to_amd_nb(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %2, align 8
  %23 = call i32 @amd64_configure(i32 %21, i64 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %13

29:                                               ; preds = %13
  %30 = call i32 (...) @amd_flush_garts()
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %29, %11
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i64 @virt_to_phys(i32) #1

declare dso_local i32 @amd_nb_has_feature(i32) #1

declare dso_local i32 @amd_nb_num(...) #1

declare dso_local i32 @amd64_configure(i32, i64) #1

declare dso_local %struct.TYPE_3__* @node_to_amd_nb(i32) #1

declare dso_local i32 @amd_flush_garts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
