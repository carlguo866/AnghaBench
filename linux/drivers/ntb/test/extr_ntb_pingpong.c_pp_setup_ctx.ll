; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_pingpong.c_pp_setup_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_pingpong.c_pp_setup_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_ctx = type { i32 }

@pp_ops = common dso_local global i32 0, align 4
@NTB_SPEED_AUTO = common dso_local global i32 0, align 4
@NTB_WIDTH_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_ctx*)* @pp_setup_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_setup_ctx(%struct.pp_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.pp_ctx* %0, %struct.pp_ctx** %3, align 8
  %5 = load %struct.pp_ctx*, %struct.pp_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.pp_ctx*, %struct.pp_ctx** %3, align 8
  %9 = call i32 @ntb_set_ctx(i32 %7, %struct.pp_ctx* %8, i32* @pp_ops)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %25

14:                                               ; preds = %1
  %15 = load %struct.pp_ctx*, %struct.pp_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NTB_SPEED_AUTO, align 4
  %19 = load i32, i32* @NTB_WIDTH_AUTO, align 4
  %20 = call i32 @ntb_link_enable(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.pp_ctx*, %struct.pp_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntb_link_event(i32 %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %14, %12
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @ntb_set_ctx(i32, %struct.pp_ctx*, i32*) #1

declare dso_local i32 @ntb_link_enable(i32, i32, i32) #1

declare dso_local i32 @ntb_link_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
