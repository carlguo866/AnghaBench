; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_uri_acounters_clear.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_uri_acounters_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i32* }

@acounter_off = common dso_local global i64 0, align 8
@acounters_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_uri_acounters_clear(%struct.cache_uri* %0) #0 {
  %2 = alloca %struct.cache_uri*, align 8
  store %struct.cache_uri* %0, %struct.cache_uri** %2, align 8
  %3 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %4 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* @acounter_off, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* @acounters_size, align 4
  %9 = call i32 @memset(i32* %7, i32 0, i32 %8)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
