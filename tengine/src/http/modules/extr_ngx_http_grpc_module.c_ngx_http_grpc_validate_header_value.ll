; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_validate_header_value.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_validate_header_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@CR = common dso_local global i8 0, align 1
@LF = common dso_local global i8 0, align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @ngx_http_grpc_validate_header_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_grpc_validate_header_value(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %39, %2
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %6, align 1
  %21 = load i8, i8* %6, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %14
  %25 = load i8, i8* %6, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* @CR, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i8, i8* %6, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* @LF, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %24, %14
  %37 = load i32, i32* @NGX_ERROR, align 4
  store i32 %37, i32* %3, align 4
  br label %44

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %8

42:                                               ; preds = %8
  %43 = load i32, i32* @NGX_OK, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %36
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
