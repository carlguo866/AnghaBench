; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_occlusion_query_ops_destroy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_occlusion_query_ops_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_query = type { i32 }
%struct.wined3d_occlusion_query = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_query*)* @wined3d_occlusion_query_ops_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_occlusion_query_ops_destroy(%struct.wined3d_query* %0) #0 {
  %2 = alloca %struct.wined3d_query*, align 8
  %3 = alloca %struct.wined3d_occlusion_query*, align 8
  store %struct.wined3d_query* %0, %struct.wined3d_query** %2, align 8
  %4 = load %struct.wined3d_query*, %struct.wined3d_query** %2, align 8
  %5 = call %struct.wined3d_occlusion_query* @wined3d_occlusion_query_from_query(%struct.wined3d_query* %4)
  store %struct.wined3d_occlusion_query* %5, %struct.wined3d_occlusion_query** %3, align 8
  %6 = load %struct.wined3d_occlusion_query*, %struct.wined3d_occlusion_query** %3, align 8
  %7 = getelementptr inbounds %struct.wined3d_occlusion_query, %struct.wined3d_occlusion_query* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.wined3d_occlusion_query*, %struct.wined3d_occlusion_query** %3, align 8
  %12 = call i32 @context_free_occlusion_query(%struct.wined3d_occlusion_query* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.wined3d_occlusion_query*, %struct.wined3d_occlusion_query** %3, align 8
  %15 = call i32 @heap_free(%struct.wined3d_occlusion_query* %14)
  ret void
}

declare dso_local %struct.wined3d_occlusion_query* @wined3d_occlusion_query_from_query(%struct.wined3d_query*) #1

declare dso_local i32 @context_free_occlusion_query(%struct.wined3d_occlusion_query*) #1

declare dso_local i32 @heap_free(%struct.wined3d_occlusion_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
