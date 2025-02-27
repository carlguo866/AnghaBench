; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_flatten_static_indexed.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_flatten_static_indexed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_qpack_flatten_context_t = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32* }

@H2O_HPACK_ENCODE_INT_MAX_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_qpack_flatten_context_t*, i32)* @flatten_static_indexed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flatten_static_indexed(%struct.st_h2o_qpack_flatten_context_t* %0, i32 %1) #0 {
  %3 = alloca %struct.st_h2o_qpack_flatten_context_t*, align 8
  %4 = alloca i32, align 4
  store %struct.st_h2o_qpack_flatten_context_t* %0, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  %6 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  %9 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  %12 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @H2O_HPACK_ENCODE_INT_MAX_LENGTH, align 8
  %17 = add i64 %15, %16
  %18 = call i32 @h2o_vector_reserve(i32 %7, %struct.TYPE_3__* %10, i64 %17)
  %19 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  %20 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  %25 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  store i32 192, i32* %29, align 4
  %30 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  %31 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @flatten_int(%struct.TYPE_3__* %32, i32 %33, i32 6)
  ret void
}

declare dso_local i32 @h2o_vector_reserve(i32, %struct.TYPE_3__*, i64) #1

declare dso_local i32 @flatten_int(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
