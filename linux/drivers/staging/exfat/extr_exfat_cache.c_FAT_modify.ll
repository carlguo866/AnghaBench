; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c_FAT_modify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c_FAT_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buf_cache_t = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FAT_modify(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buf_cache_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.buf_cache_t* @FAT_cache_find(%struct.super_block* %6, i32 %7)
  store %struct.buf_cache_t* %8, %struct.buf_cache_t** %5, align 8
  %9 = load %struct.buf_cache_t*, %struct.buf_cache_t** %5, align 8
  %10 = icmp ne %struct.buf_cache_t* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.buf_cache_t*, %struct.buf_cache_t** %5, align 8
  %15 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sector_write(%struct.super_block* %12, i32 %13, i32 %16, i32 0)
  br label %18

18:                                               ; preds = %11, %2
  ret void
}

declare dso_local %struct.buf_cache_t* @FAT_cache_find(%struct.super_block*, i32) #1

declare dso_local i32 @sector_write(%struct.super_block*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
