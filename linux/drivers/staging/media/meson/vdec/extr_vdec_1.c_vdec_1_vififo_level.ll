; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec_1.c_vdec_1_vififo_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec_1.c_vdec_1_vififo_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amvdec_session = type { %struct.amvdec_core* }
%struct.amvdec_core = type { i32 }

@VLD_MEM_VIFIFO_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amvdec_session*)* @vdec_1_vififo_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_1_vififo_level(%struct.amvdec_session* %0) #0 {
  %2 = alloca %struct.amvdec_session*, align 8
  %3 = alloca %struct.amvdec_core*, align 8
  store %struct.amvdec_session* %0, %struct.amvdec_session** %2, align 8
  %4 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %5 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %4, i32 0, i32 0
  %6 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  store %struct.amvdec_core* %6, %struct.amvdec_core** %3, align 8
  %7 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %8 = load i32, i32* @VLD_MEM_VIFIFO_LEVEL, align 4
  %9 = call i32 @amvdec_read_dos(%struct.amvdec_core* %7, i32 %8)
  ret i32 %9
}

declare dso_local i32 @amvdec_read_dos(%struct.amvdec_core*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
