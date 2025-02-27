; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_result_make_header.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_result_make_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_query_header = type { i32 }

@RPC_REQ_RESULT_FLAGS = common dso_local global i32 0, align 4
@TL_QUERY_HEADER_FLAG_RETURN_BINLOG_POS = common dso_local global i32 0, align 4
@TL_QUERY_HEADER_FLAG_RETURN_BINLOG_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_result_make_header(i32* %0, %struct.tl_query_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tl_query_header*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.tl_query_header* %1, %struct.tl_query_header** %5, align 8
  %8 = load i32*, i32** %4, align 8
  store i32* %8, i32** %6, align 8
  %9 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %10 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

14:                                               ; preds = %2
  %15 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %16 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @tl_result_new_flags(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @RPC_REQ_RESULT_FLAGS, align 4
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @TL_QUERY_HEADER_FLAG_RETURN_BINLOG_POS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %14
  %32 = call i64 (...) @log_last_pos()
  %33 = load i32*, i32** %6, align 8
  %34 = bitcast i32* %33 to i64*
  store i64 %32, i64* %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32* %36, i32** %6, align 8
  br label %37

37:                                               ; preds = %31, %14
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @TL_QUERY_HEADER_FLAG_RETURN_BINLOG_TIME, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = call i64 @get_precise_time(i32 1000000)
  %44 = load i32*, i32** %6, align 8
  %45 = bitcast i32* %44 to i64*
  store i64 %43, i64* %45, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32* %47, i32** %6, align 8
  br label %48

48:                                               ; preds = %42, %37
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = ptrtoint i32* %49 to i64
  %52 = ptrtoint i32* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 4
  %55 = mul nsw i64 %54, 4
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %48, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @tl_result_new_flags(i32) #1

declare dso_local i64 @log_last_pos(...) #1

declare dso_local i64 @get_precise_time(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
