; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_raw3215_alloc_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_raw3215_alloc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_req = type { %struct.raw3215_req* }

@raw3215_freelist_lock = common dso_local global i32 0, align 4
@raw3215_freelist = common dso_local global %struct.raw3215_req* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.raw3215_req* ()* @raw3215_alloc_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.raw3215_req* @raw3215_alloc_req() #0 {
  %1 = alloca %struct.raw3215_req*, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @spin_lock_irqsave(i32* @raw3215_freelist_lock, i64 %3)
  %5 = load %struct.raw3215_req*, %struct.raw3215_req** @raw3215_freelist, align 8
  store %struct.raw3215_req* %5, %struct.raw3215_req** %1, align 8
  %6 = load %struct.raw3215_req*, %struct.raw3215_req** %1, align 8
  %7 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %6, i32 0, i32 0
  %8 = load %struct.raw3215_req*, %struct.raw3215_req** %7, align 8
  store %struct.raw3215_req* %8, %struct.raw3215_req** @raw3215_freelist, align 8
  %9 = load i64, i64* %2, align 8
  %10 = call i32 @spin_unlock_irqrestore(i32* @raw3215_freelist_lock, i64 %9)
  %11 = load %struct.raw3215_req*, %struct.raw3215_req** %1, align 8
  ret %struct.raw3215_req* %11
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
