; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_speakup_date.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_speakup_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, i32, i32 }

@spk_cx = common dso_local global i32 0, align 4
@spk_x = common dso_local global i32 0, align 4
@spk_cy = common dso_local global i32 0, align 4
@spk_y = common dso_local global i32 0, align 4
@spk_cp = common dso_local global i64 0, align 8
@spk_pos = common dso_local global i64 0, align 8
@spk_attr = common dso_local global i32 0, align 4
@spk_old_attr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @speakup_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @speakup_date(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %3 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %4 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* @spk_cx, align 4
  store i32 %5, i32* @spk_x, align 4
  %6 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %7 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* @spk_cy, align 4
  store i32 %8, i32* @spk_y, align 4
  %9 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %10 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* @spk_cp, align 8
  store i64 %11, i64* @spk_pos, align 8
  %12 = load i32, i32* @spk_attr, align 4
  store i32 %12, i32* @spk_old_attr, align 4
  %13 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %14 = load i64, i64* @spk_pos, align 8
  %15 = inttoptr i64 %14 to i32*
  %16 = call i32 @get_attributes(%struct.vc_data* %13, i32* %15)
  store i32 %16, i32* @spk_attr, align 4
  ret void
}

declare dso_local i32 @get_attributes(%struct.vc_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
