; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evrpc.c_evrpc_hook_meta_new_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evrpc.c_evrpc_hook_meta_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_hook_meta = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.evrpc_hook_meta* ()* @evrpc_hook_meta_new_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.evrpc_hook_meta* @evrpc_hook_meta_new_() #0 {
  %1 = alloca %struct.evrpc_hook_meta*, align 8
  %2 = call %struct.evrpc_hook_meta* @mm_malloc(i32 16)
  store %struct.evrpc_hook_meta* %2, %struct.evrpc_hook_meta** %1, align 8
  %3 = load %struct.evrpc_hook_meta*, %struct.evrpc_hook_meta** %1, align 8
  %4 = icmp ne %struct.evrpc_hook_meta* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @EVUTIL_ASSERT(i32 %5)
  %7 = load %struct.evrpc_hook_meta*, %struct.evrpc_hook_meta** %1, align 8
  %8 = getelementptr inbounds %struct.evrpc_hook_meta, %struct.evrpc_hook_meta* %7, i32 0, i32 1
  %9 = call i32 @TAILQ_INIT(i32* %8)
  %10 = load %struct.evrpc_hook_meta*, %struct.evrpc_hook_meta** %1, align 8
  %11 = getelementptr inbounds %struct.evrpc_hook_meta, %struct.evrpc_hook_meta* %10, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = load %struct.evrpc_hook_meta*, %struct.evrpc_hook_meta** %1, align 8
  ret %struct.evrpc_hook_meta* %12
}

declare dso_local %struct.evrpc_hook_meta* @mm_malloc(i32) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
