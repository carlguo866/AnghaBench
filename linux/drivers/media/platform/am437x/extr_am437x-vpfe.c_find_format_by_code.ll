; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_find_format_by_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_find_format_by_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_fmt = type { i32 }

@formats = common dso_local global %struct.vpfe_fmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vpfe_fmt* (i32)* @find_format_by_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vpfe_fmt* @find_format_by_code(i32 %0) #0 {
  %2 = alloca %struct.vpfe_fmt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpfe_fmt*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.vpfe_fmt*, %struct.vpfe_fmt** @formats, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.vpfe_fmt* %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = load %struct.vpfe_fmt*, %struct.vpfe_fmt** @formats, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.vpfe_fmt, %struct.vpfe_fmt* %12, i64 %14
  store %struct.vpfe_fmt* %15, %struct.vpfe_fmt** %4, align 8
  %16 = load %struct.vpfe_fmt*, %struct.vpfe_fmt** %4, align 8
  %17 = getelementptr inbounds %struct.vpfe_fmt, %struct.vpfe_fmt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load %struct.vpfe_fmt*, %struct.vpfe_fmt** %4, align 8
  store %struct.vpfe_fmt* %22, %struct.vpfe_fmt** %2, align 8
  br label %28

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %6

27:                                               ; preds = %6
  store %struct.vpfe_fmt* null, %struct.vpfe_fmt** %2, align 8
  br label %28

28:                                               ; preds = %27, %21
  %29 = load %struct.vpfe_fmt*, %struct.vpfe_fmt** %2, align 8
  ret %struct.vpfe_fmt* %29
}

declare dso_local i32 @ARRAY_SIZE(%struct.vpfe_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
