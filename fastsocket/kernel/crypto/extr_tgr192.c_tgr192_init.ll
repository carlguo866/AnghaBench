; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tgr192.c_tgr192_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tgr192.c_tgr192_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.tgr192_ctx = type { i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*)* @tgr192_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tgr192_init(%struct.shash_desc* %0) #0 {
  %2 = alloca %struct.shash_desc*, align 8
  %3 = alloca %struct.tgr192_ctx*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %2, align 8
  %4 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %5 = call %struct.tgr192_ctx* @shash_desc_ctx(%struct.shash_desc* %4)
  store %struct.tgr192_ctx* %5, %struct.tgr192_ctx** %3, align 8
  %6 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %6, i32 0, i32 0
  store i32 -1985229329, i32* %7, align 8
  %8 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %8, i32 0, i32 1
  store i32 1985229328, i32* %9, align 4
  %10 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %10, i32 0, i32 2
  store i32 -1011687033, i32* %11, align 8
  %12 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  ret i32 0
}

declare dso_local %struct.tgr192_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
