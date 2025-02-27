; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_hgpk.c_hgpk_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_hgpk.c_hgpk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.hgpk_data* }
%struct.hgpk_data = type { i32, i32, %struct.psmouse* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@hgpk_recalib_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hgpk_init(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.hgpk_data*, align 8
  %5 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.hgpk_data* @kzalloc(i32 16, i32 %8)
  store %struct.hgpk_data* %9, %struct.hgpk_data** %4, align 8
  %10 = load %struct.hgpk_data*, %struct.hgpk_data** %4, align 8
  %11 = icmp ne %struct.hgpk_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %41

13:                                               ; preds = %1
  %14 = load %struct.hgpk_data*, %struct.hgpk_data** %4, align 8
  %15 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %16 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 0
  store %struct.hgpk_data* %14, %struct.hgpk_data** %16, align 8
  %17 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %18 = load %struct.hgpk_data*, %struct.hgpk_data** %4, align 8
  %19 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %18, i32 0, i32 2
  store %struct.psmouse* %17, %struct.psmouse** %19, align 8
  %20 = load %struct.hgpk_data*, %struct.hgpk_data** %4, align 8
  %21 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.hgpk_data*, %struct.hgpk_data** %4, align 8
  %23 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %22, i32 0, i32 1
  %24 = load i32, i32* @hgpk_recalib_work, align 4
  %25 = call i32 @INIT_DELAYED_WORK(i32* %23, i32 %24)
  %26 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %27 = call i32 @psmouse_reset(%struct.psmouse* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %13
  br label %38

31:                                               ; preds = %13
  %32 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %33 = call i32 @hgpk_register(%struct.psmouse* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %38

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %43

38:                                               ; preds = %36, %30
  %39 = load %struct.hgpk_data*, %struct.hgpk_data** %4, align 8
  %40 = call i32 @kfree(%struct.hgpk_data* %39)
  br label %41

41:                                               ; preds = %38, %12
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.hgpk_data* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @psmouse_reset(%struct.psmouse*) #1

declare dso_local i32 @hgpk_register(%struct.psmouse*) #1

declare dso_local i32 @kfree(%struct.hgpk_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
