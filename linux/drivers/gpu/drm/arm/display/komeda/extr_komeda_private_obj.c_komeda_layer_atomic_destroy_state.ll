; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_private_obj.c_komeda_layer_atomic_destroy_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_private_obj.c_komeda_layer_atomic_destroy_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_private_obj = type { i32 }
%struct.drm_private_state = type { i32 }
%struct.komeda_layer_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_private_obj*, %struct.drm_private_state*)* @komeda_layer_atomic_destroy_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @komeda_layer_atomic_destroy_state(%struct.drm_private_obj* %0, %struct.drm_private_state* %1) #0 {
  %3 = alloca %struct.drm_private_obj*, align 8
  %4 = alloca %struct.drm_private_state*, align 8
  %5 = alloca %struct.komeda_layer_state*, align 8
  store %struct.drm_private_obj* %0, %struct.drm_private_obj** %3, align 8
  store %struct.drm_private_state* %1, %struct.drm_private_state** %4, align 8
  %6 = load %struct.drm_private_state*, %struct.drm_private_state** %4, align 8
  %7 = call i32 @priv_to_comp_st(%struct.drm_private_state* %6)
  %8 = call %struct.komeda_layer_state* @to_layer_st(i32 %7)
  store %struct.komeda_layer_state* %8, %struct.komeda_layer_state** %5, align 8
  %9 = load %struct.komeda_layer_state*, %struct.komeda_layer_state** %5, align 8
  %10 = call i32 @kfree(%struct.komeda_layer_state* %9)
  ret void
}

declare dso_local %struct.komeda_layer_state* @to_layer_st(i32) #1

declare dso_local i32 @priv_to_comp_st(%struct.drm_private_state*) #1

declare dso_local i32 @kfree(%struct.komeda_layer_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
