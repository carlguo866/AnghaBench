; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_release_cache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_release_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"freeing L%d %s cache for %pOF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*)* @release_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_cache(%struct.cache* %0) #0 {
  %2 = alloca %struct.cache*, align 8
  store %struct.cache* %0, %struct.cache** %2, align 8
  %3 = load %struct.cache*, %struct.cache** %2, align 8
  %4 = icmp ne %struct.cache* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %27

6:                                                ; preds = %1
  %7 = load %struct.cache*, %struct.cache** %2, align 8
  %8 = getelementptr inbounds %struct.cache, %struct.cache* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cache*, %struct.cache** %2, align 8
  %11 = call i32 @cache_type_string(%struct.cache* %10)
  %12 = load %struct.cache*, %struct.cache** %2, align 8
  %13 = getelementptr inbounds %struct.cache, %struct.cache* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %11, i32 %14)
  %16 = load %struct.cache*, %struct.cache** %2, align 8
  %17 = call i32 @release_cache_debugcheck(%struct.cache* %16)
  %18 = load %struct.cache*, %struct.cache** %2, align 8
  %19 = getelementptr inbounds %struct.cache, %struct.cache* %18, i32 0, i32 1
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.cache*, %struct.cache** %2, align 8
  %22 = getelementptr inbounds %struct.cache, %struct.cache* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @of_node_put(i32 %23)
  %25 = load %struct.cache*, %struct.cache** %2, align 8
  %26 = call i32 @kfree(%struct.cache* %25)
  br label %27

27:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @cache_type_string(%struct.cache*) #1

declare dso_local i32 @release_cache_debugcheck(%struct.cache*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @kfree(%struct.cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
