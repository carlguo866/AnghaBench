; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_movinggc.c_bucket_heap_top.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_movinggc.c_bucket_heap_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }
%struct.bucket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache*)* @bucket_heap_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bucket_heap_top(%struct.cache* %0) #0 {
  %2 = alloca %struct.cache*, align 8
  %3 = alloca %struct.bucket*, align 8
  store %struct.cache* %0, %struct.cache** %2, align 8
  %4 = load %struct.cache*, %struct.cache** %2, align 8
  %5 = getelementptr inbounds %struct.cache, %struct.cache* %4, i32 0, i32 0
  %6 = call %struct.bucket* @heap_peek(i32* %5)
  store %struct.bucket* %6, %struct.bucket** %3, align 8
  %7 = icmp ne %struct.bucket* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.bucket*, %struct.bucket** %3, align 8
  %10 = call i32 @GC_SECTORS_USED(%struct.bucket* %9)
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi i32 [ %10, %8 ], [ 0, %11 ]
  ret i32 %13
}

declare dso_local %struct.bucket* @heap_peek(i32*) #1

declare dso_local i32 @GC_SECTORS_USED(%struct.bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
