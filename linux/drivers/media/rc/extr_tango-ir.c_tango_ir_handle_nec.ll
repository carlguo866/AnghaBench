; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_tango-ir.c_tango_ir_handle_nec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_tango-ir.c_tango_ir_handle_nec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tango_ir = type { i32, i64 }

@IR_NEC_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tango_ir*)* @tango_ir_handle_nec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tango_ir_handle_nec(%struct.tango_ir* %0) #0 {
  %2 = alloca %struct.tango_ir*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tango_ir* %0, %struct.tango_ir** %2, align 8
  %6 = load %struct.tango_ir*, %struct.tango_ir** %2, align 8
  %7 = getelementptr inbounds %struct.tango_ir, %struct.tango_ir* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IR_NEC_DATA, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl_relaxed(i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.tango_ir*, %struct.tango_ir** %2, align 8
  %16 = getelementptr inbounds %struct.tango_ir, %struct.tango_ir* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @rc_repeat(i32 %17)
  br label %34

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %21, 8
  %23 = load i32, i32* %3, align 4
  %24 = ashr i32 %23, 16
  %25 = load i32, i32* %3, align 4
  %26 = ashr i32 %25, 24
  %27 = call i32 @ir_nec_bytes_to_scancode(i32 %20, i32 %22, i32 %24, i32 %26, i32* %5)
  store i32 %27, i32* %4, align 4
  %28 = load %struct.tango_ir*, %struct.tango_ir** %2, align 8
  %29 = getelementptr inbounds %struct.tango_ir, %struct.tango_ir* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @rc_keydown(i32 %30, i32 %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %19, %14
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @rc_repeat(i32) #1

declare dso_local i32 @ir_nec_bytes_to_scancode(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rc_keydown(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
