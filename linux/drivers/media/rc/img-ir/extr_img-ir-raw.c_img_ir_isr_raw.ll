; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-raw.c_img_ir_isr_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-raw.c_img_ir_isr_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_priv = type { %struct.img_ir_priv_raw }
%struct.img_ir_priv_raw = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@ECHO_TIMEOUT_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @img_ir_isr_raw(%struct.img_ir_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.img_ir_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.img_ir_priv_raw*, align 8
  store %struct.img_ir_priv* %0, %struct.img_ir_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %7 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %6, i32 0, i32 0
  store %struct.img_ir_priv_raw* %7, %struct.img_ir_priv_raw** %5, align 8
  %8 = load %struct.img_ir_priv_raw*, %struct.img_ir_priv_raw** %5, align 8
  %9 = getelementptr inbounds %struct.img_ir_priv_raw, %struct.img_ir_priv_raw* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @img_ir_refresh_raw(%struct.img_ir_priv* %14, i32 %15)
  %17 = load %struct.img_ir_priv_raw*, %struct.img_ir_priv_raw** %5, align 8
  %18 = getelementptr inbounds %struct.img_ir_priv_raw, %struct.img_ir_priv_raw* %17, i32 0, i32 0
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i32, i32* @ECHO_TIMEOUT_MS, align 4
  %21 = call i64 @msecs_to_jiffies(i32 %20)
  %22 = add nsw i64 %19, %21
  %23 = call i32 @mod_timer(i32* %18, i64 %22)
  br label %24

24:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @img_ir_refresh_raw(%struct.img_ir_priv*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
