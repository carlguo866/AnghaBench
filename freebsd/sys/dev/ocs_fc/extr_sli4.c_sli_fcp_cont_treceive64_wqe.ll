; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fcp_cont_treceive64_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fcp_cont_treceive64_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@SLI4_WQE_FCP_CONT_TRECEIVE64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sli_fcp_cont_treceive64_wqe(i32* %0, i8* %1, i64 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32* %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18) #0 {
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
  %40 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %20, align 8
  store i8* %1, i8** %21, align 8
  store i64 %2, i64* %22, align 8
  store i32* %3, i32** %23, align 8
  store i32 %4, i32* %24, align 4
  store i32 %5, i32* %25, align 4
  store i32 %6, i32* %26, align 4
  store i32 %7, i32* %27, align 4
  store i32 %8, i32* %28, align 4
  store i32 %9, i32* %29, align 4
  store i32 %10, i32* %30, align 4
  store i32 %11, i32* %31, align 4
  store i32 %12, i32* %32, align 4
  store i32* %13, i32** %33, align 8
  store i32 %14, i32* %34, align 4
  store i32 %15, i32* %35, align 4
  store i32 %16, i32* %36, align 4
  store i32 %17, i32* %37, align 4
  store i32 %18, i32* %38, align 4
  %41 = load i32*, i32** %20, align 8
  %42 = load i8*, i8** %21, align 8
  %43 = load i64, i64* %22, align 8
  %44 = load i32*, i32** %23, align 8
  %45 = load i32, i32* %24, align 4
  %46 = load i32, i32* %25, align 4
  %47 = load i32, i32* %26, align 4
  %48 = load i32, i32* %27, align 4
  %49 = load i32, i32* %29, align 4
  %50 = load i32, i32* %30, align 4
  %51 = load i32, i32* %31, align 4
  %52 = load i32, i32* %32, align 4
  %53 = load i32*, i32** %33, align 8
  %54 = load i32, i32* %34, align 4
  %55 = load i32, i32* %35, align 4
  %56 = load i32, i32* %36, align 4
  %57 = load i32, i32* %37, align 4
  %58 = load i32, i32* %38, align 4
  %59 = call i64 @sli_fcp_treceive64_wqe(i32* %41, i8* %42, i64 %43, i32* %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32* %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  store i64 %59, i64* %39, align 8
  %60 = load i64, i64* %39, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %19
  %63 = load i8*, i8** %21, align 8
  %64 = bitcast i8* %63 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %40, align 8
  %65 = load i32, i32* @SLI4_WQE_FCP_CONT_TRECEIVE64, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %28, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  br label %72

72:                                               ; preds = %62, %19
  %73 = load i64, i64* %39, align 8
  ret i64 %73
}

declare dso_local i64 @sli_fcp_treceive64_wqe(i32*, i8*, i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
