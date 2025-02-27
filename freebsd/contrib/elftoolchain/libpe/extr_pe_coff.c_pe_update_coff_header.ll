; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libpe/extr_pe_coff.c_pe_update_coff_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libpe/extr_pe_coff.c_pe_update_coff_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PE_C_READ = common dso_local global i64 0, align 8
@LIBPE_F_FD_DONE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LIBPE_F_DIRTY_OPT_HEADER = common dso_local global i32 0, align 4
@LIBPE_F_DIRTY_COFF_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pe_update_coff_header(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %7 = icmp eq %struct.TYPE_7__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = icmp eq %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %70

13:                                               ; preds = %8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PE_C_READ, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @LIBPE_F_FD_DONE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19, %13
  %27 = load i32, i32* @EACCES, align 4
  store i32 %27, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %70

28:                                               ; preds = %19
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp eq %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = call %struct.TYPE_6__* @malloc(i32 8)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %36, align 8
  %37 = icmp eq %struct.TYPE_6__* %34, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %70

40:                                               ; preds = %33
  br label %58

41:                                               ; preds = %28
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load i32, i32* @LIBPE_F_DIRTY_OPT_HEADER, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %41
  br label %58

58:                                               ; preds = %57, %40
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = bitcast %struct.TYPE_6__* %61 to i8*
  %64 = bitcast %struct.TYPE_6__* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 8, i1 false)
  %65 = load i32, i32* @LIBPE_F_DIRTY_COFF_HEADER, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %58, %38, %26, %11
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
