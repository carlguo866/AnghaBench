; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_ts_cache.c_init_ts_config_cache.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_ts_cache.c_init_ts_config_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Tsearch configuration cache\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@TSConfigCacheHash = common dso_local global i32 0, align 4
@TSCONFIGOID = common dso_local global i32 0, align 4
@InvalidateTSCacheCallBack = common dso_local global i32 0, align 4
@TSCONFIGMAP = common dso_local global i32 0, align 4
@CacheMemoryContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_ts_config_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ts_config_cache() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = call i32 @MemSet(%struct.TYPE_4__* %1, i32 0, i32 8)
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 4, i32* %3, align 4
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 4, i32* %4, align 4
  %5 = load i32, i32* @HASH_ELEM, align 4
  %6 = load i32, i32* @HASH_BLOBS, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @hash_create(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 16, %struct.TYPE_4__* %1, i32 %7)
  store i32 %8, i32* @TSConfigCacheHash, align 4
  %9 = load i32, i32* @TSCONFIGOID, align 4
  %10 = load i32, i32* @InvalidateTSCacheCallBack, align 4
  %11 = load i32, i32* @TSConfigCacheHash, align 4
  %12 = call i32 @PointerGetDatum(i32 %11)
  %13 = call i32 @CacheRegisterSyscacheCallback(i32 %9, i32 %10, i32 %12)
  %14 = load i32, i32* @TSCONFIGMAP, align 4
  %15 = load i32, i32* @InvalidateTSCacheCallBack, align 4
  %16 = load i32, i32* @TSConfigCacheHash, align 4
  %17 = call i32 @PointerGetDatum(i32 %16)
  %18 = call i32 @CacheRegisterSyscacheCallback(i32 %14, i32 %15, i32 %17)
  %19 = load i32, i32* @CacheMemoryContext, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %0
  %22 = call i32 (...) @CreateCacheMemoryContext()
  br label %23

23:                                               ; preds = %21, %0
  ret void
}

declare dso_local i32 @MemSet(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @hash_create(i8*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @CacheRegisterSyscacheCallback(i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32 @CreateCacheMemoryContext(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
