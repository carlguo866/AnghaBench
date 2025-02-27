; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_update_vs_emph.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_update_vs_emph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_dp_link_train_info = type { i32, i32*, i32, i32 }

@ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH = common dso_local global i32 0, align 4
@DP_TRAINING_LANE0_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_dp_link_train_info*)* @radeon_dp_update_vs_emph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_dp_update_vs_emph(%struct.radeon_dp_link_train_info* %0) #0 {
  %2 = alloca %struct.radeon_dp_link_train_info*, align 8
  store %struct.radeon_dp_link_train_info* %0, %struct.radeon_dp_link_train_info** %2, align 8
  %3 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %4 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH, align 4
  %7 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %8 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @atombios_dig_transmitter_setup(i32 %5, i32 %6, i32 0, i32 %11)
  %13 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %14 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @DP_TRAINING_LANE0_SET, align 4
  %17 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %18 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @radeon_dp_aux_native_write(i32 %15, i32 %16, i32* %19, i32 %22, i32 0)
  ret void
}

declare dso_local i32 @atombios_dig_transmitter_setup(i32, i32, i32, i32) #1

declare dso_local i32 @radeon_dp_aux_native_write(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
