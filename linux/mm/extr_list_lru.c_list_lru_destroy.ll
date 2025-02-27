; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_list_lru.c_list_lru_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_list_lru.c_list_lru_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_lru = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_lru_destroy(%struct.list_lru* %0) #0 {
  %2 = alloca %struct.list_lru*, align 8
  store %struct.list_lru* %0, %struct.list_lru** %2, align 8
  %3 = load %struct.list_lru*, %struct.list_lru** %2, align 8
  %4 = getelementptr inbounds %struct.list_lru, %struct.list_lru* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %21

8:                                                ; preds = %1
  %9 = call i32 (...) @memcg_get_cache_ids()
  %10 = load %struct.list_lru*, %struct.list_lru** %2, align 8
  %11 = call i32 @list_lru_unregister(%struct.list_lru* %10)
  %12 = load %struct.list_lru*, %struct.list_lru** %2, align 8
  %13 = call i32 @memcg_destroy_list_lru(%struct.list_lru* %12)
  %14 = load %struct.list_lru*, %struct.list_lru** %2, align 8
  %15 = getelementptr inbounds %struct.list_lru, %struct.list_lru* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @kfree(i32* %16)
  %18 = load %struct.list_lru*, %struct.list_lru** %2, align 8
  %19 = getelementptr inbounds %struct.list_lru, %struct.list_lru* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = call i32 (...) @memcg_put_cache_ids()
  br label %21

21:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @memcg_get_cache_ids(...) #1

declare dso_local i32 @list_lru_unregister(%struct.list_lru*) #1

declare dso_local i32 @memcg_destroy_list_lru(%struct.list_lru*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcg_put_cache_ids(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
