; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_expkey_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_expkey_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_head = type { i32 }
%struct.svc_expkey = type { %struct.cache_head }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_head* ()* @expkey_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_head* @expkey_alloc() #0 {
  %1 = alloca %struct.cache_head*, align 8
  %2 = alloca %struct.svc_expkey*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.svc_expkey* @kmalloc(i32 4, i32 %3)
  store %struct.svc_expkey* %4, %struct.svc_expkey** %2, align 8
  %5 = load %struct.svc_expkey*, %struct.svc_expkey** %2, align 8
  %6 = icmp ne %struct.svc_expkey* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load %struct.svc_expkey*, %struct.svc_expkey** %2, align 8
  %9 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %8, i32 0, i32 0
  store %struct.cache_head* %9, %struct.cache_head** %1, align 8
  br label %11

10:                                               ; preds = %0
  store %struct.cache_head* null, %struct.cache_head** %1, align 8
  br label %11

11:                                               ; preds = %10, %7
  %12 = load %struct.cache_head*, %struct.cache_head** %1, align 8
  ret %struct.cache_head* %12
}

declare dso_local %struct.svc_expkey* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
