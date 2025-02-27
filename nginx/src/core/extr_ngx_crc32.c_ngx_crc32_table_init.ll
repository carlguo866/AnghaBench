; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_crc32.c_ngx_crc32_table_init.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_crc32.c_ngx_crc32_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ngx_crc32_table_short = common dso_local global i8* null, align 8
@ngx_cacheline_size = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_2__* null, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_crc32_table16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_crc32_table_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i8*, i8** @ngx_crc32_table_short, align 8
  %4 = ptrtoint i8* %3 to i64
  %5 = load i64, i64* @ngx_cacheline_size, align 8
  %6 = sub i64 %5, 1
  %7 = xor i64 %6, -1
  %8 = and i64 %4, %7
  %9 = load i8*, i8** @ngx_crc32_table_short, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = icmp eq i64 %8, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i32, i32* @NGX_OK, align 4
  store i32 %13, i32* %1, align 4
  br label %34

14:                                               ; preds = %0
  %15 = load i64, i64* @ngx_cacheline_size, align 8
  %16 = add i64 64, %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ngx_cycle, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @ngx_alloc(i64 %16, i32 %19)
  store i8* %20, i8** %2, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @NGX_ERROR, align 4
  store i32 %24, i32* %1, align 4
  br label %34

25:                                               ; preds = %14
  %26 = load i8*, i8** %2, align 8
  %27 = load i64, i64* @ngx_cacheline_size, align 8
  %28 = call i8* @ngx_align_ptr(i8* %26, i64 %27)
  store i8* %28, i8** %2, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = load i32, i32* @ngx_crc32_table16, align 4
  %31 = call i32 @ngx_memcpy(i8* %29, i32 %30, i32 64)
  %32 = load i8*, i8** %2, align 8
  store i8* %32, i8** @ngx_crc32_table_short, align 8
  %33 = load i32, i32* @NGX_OK, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %25, %23, %12
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i8* @ngx_alloc(i64, i32) #1

declare dso_local i8* @ngx_align_ptr(i8*, i64) #1

declare dso_local i32 @ngx_memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
