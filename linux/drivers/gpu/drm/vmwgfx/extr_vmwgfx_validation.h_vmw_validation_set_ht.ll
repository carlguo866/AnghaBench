; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_validation.h_vmw_validation_set_ht.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_validation.h_vmw_validation_set_ht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_validation_context = type { %struct.drm_open_hash* }
%struct.drm_open_hash = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_validation_context*, %struct.drm_open_hash*)* @vmw_validation_set_ht to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_validation_set_ht(%struct.vmw_validation_context* %0, %struct.drm_open_hash* %1) #0 {
  %3 = alloca %struct.vmw_validation_context*, align 8
  %4 = alloca %struct.drm_open_hash*, align 8
  store %struct.vmw_validation_context* %0, %struct.vmw_validation_context** %3, align 8
  store %struct.drm_open_hash* %1, %struct.drm_open_hash** %4, align 8
  %5 = load %struct.drm_open_hash*, %struct.drm_open_hash** %4, align 8
  %6 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %3, align 8
  %7 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %6, i32 0, i32 0
  store %struct.drm_open_hash* %5, %struct.drm_open_hash** %7, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
