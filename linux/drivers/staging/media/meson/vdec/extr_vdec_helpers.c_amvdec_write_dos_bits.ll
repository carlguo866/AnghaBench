; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec_helpers.c_amvdec_write_dos_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec_helpers.c_amvdec_write_dos_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amvdec_core = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amvdec_write_dos_bits(%struct.amvdec_core* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amvdec_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amvdec_core* %0, %struct.amvdec_core** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.amvdec_core*, %struct.amvdec_core** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.amvdec_core*, %struct.amvdec_core** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @amvdec_read_dos(%struct.amvdec_core* %9, i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @amvdec_write_dos(%struct.amvdec_core* %7, i32 %8, i32 %13)
  ret void
}

declare dso_local i32 @amvdec_write_dos(%struct.amvdec_core*, i32, i32) #1

declare dso_local i32 @amvdec_read_dos(%struct.amvdec_core*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
