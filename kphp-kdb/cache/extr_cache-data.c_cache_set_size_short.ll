; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_set_size_short.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_set_size_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_cache_set_size_short = type { i32, i64 }
%struct.cache_uri = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_set_size_short(%struct.lev_cache_set_size_short* %0) #0 {
  %2 = alloca %struct.lev_cache_set_size_short*, align 8
  %3 = alloca %struct.cache_uri*, align 8
  store %struct.lev_cache_set_size_short* %0, %struct.lev_cache_set_size_short** %2, align 8
  %4 = load %struct.lev_cache_set_size_short*, %struct.lev_cache_set_size_short** %2, align 8
  %5 = getelementptr inbounds %struct.lev_cache_set_size_short, %struct.lev_cache_set_size_short* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i32*
  %8 = call %struct.cache_uri* @cache_get_uri_by_md5(i32* %7, i32 8)
  store %struct.cache_uri* %8, %struct.cache_uri** %3, align 8
  %9 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  %10 = call i32 @assert(%struct.cache_uri* %9)
  %11 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  %12 = load %struct.lev_cache_set_size_short*, %struct.lev_cache_set_size_short** %2, align 8
  %13 = getelementptr inbounds %struct.lev_cache_set_size_short, %struct.lev_cache_set_size_short* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.cache_uri* @cache_set_size(%struct.cache_uri* %11, i32 %14)
  store %struct.cache_uri* %15, %struct.cache_uri** %3, align 8
  ret void
}

declare dso_local %struct.cache_uri* @cache_get_uri_by_md5(i32*, i32) #1

declare dso_local i32 @assert(%struct.cache_uri*) #1

declare dso_local %struct.cache_uri* @cache_set_size(%struct.cache_uri*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
