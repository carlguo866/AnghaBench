; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_hashtab.c_drm_ht_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_hashtab.c_drm_ht_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_open_hash = type { i32*, i32 }

@DRM_MEM_HASHTAB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_ht_remove(%struct.drm_open_hash* %0) #0 {
  %2 = alloca %struct.drm_open_hash*, align 8
  store %struct.drm_open_hash* %0, %struct.drm_open_hash** %2, align 8
  %3 = load %struct.drm_open_hash*, %struct.drm_open_hash** %2, align 8
  %4 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.drm_open_hash*, %struct.drm_open_hash** %2, align 8
  %9 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* @DRM_MEM_HASHTAB, align 4
  %12 = load %struct.drm_open_hash*, %struct.drm_open_hash** %2, align 8
  %13 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @hashdestroy(i32* %10, i32 %11, i32 %14)
  %16 = load %struct.drm_open_hash*, %struct.drm_open_hash** %2, align 8
  %17 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @hashdestroy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
