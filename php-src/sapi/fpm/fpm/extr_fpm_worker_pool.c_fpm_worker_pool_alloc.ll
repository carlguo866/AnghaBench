; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_worker_pool.c_fpm_worker_pool_alloc.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_worker_pool.c_fpm_worker_pool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fpm_worker_pool_s* @fpm_worker_pool_alloc() #0 {
  %1 = alloca %struct.fpm_worker_pool_s*, align 8
  %2 = alloca %struct.fpm_worker_pool_s*, align 8
  %3 = call %struct.fpm_worker_pool_s* @malloc(i32 8)
  store %struct.fpm_worker_pool_s* %3, %struct.fpm_worker_pool_s** %2, align 8
  %4 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %5 = icmp ne %struct.fpm_worker_pool_s* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store %struct.fpm_worker_pool_s* null, %struct.fpm_worker_pool_s** %1, align 8
  br label %15

7:                                                ; preds = %0
  %8 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %9 = call i32 @memset(%struct.fpm_worker_pool_s* %8, i32 0, i32 8)
  %10 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %11 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %13 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %12, i32 0, i32 1
  store i32 -1, i32* %13, align 4
  %14 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  store %struct.fpm_worker_pool_s* %14, %struct.fpm_worker_pool_s** %1, align 8
  br label %15

15:                                               ; preds = %7, %6
  %16 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  ret %struct.fpm_worker_pool_s* %16
}

declare dso_local %struct.fpm_worker_pool_s* @malloc(i32) #1

declare dso_local i32 @memset(%struct.fpm_worker_pool_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
