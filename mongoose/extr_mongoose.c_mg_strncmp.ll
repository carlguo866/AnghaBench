; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_strncmp.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_strncmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_strncmp(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mg_str, align 8
  %5 = alloca %struct.mg_str, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mg_str, align 8
  %8 = alloca %struct.mg_str, align 8
  %9 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 0
  store i64 %0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %6, align 8
  %11 = bitcast %struct.mg_str* %7 to i8*
  %12 = bitcast %struct.mg_str* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %13 = bitcast %struct.mg_str* %8 to i8*
  %14 = bitcast %struct.mg_str* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  br label %22

22:                                               ; preds = %19, %3
  %23 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %8, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %8, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  br label %30

30:                                               ; preds = %27, %22
  %31 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %8, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @mg_strcmp(i64 %32, i64 %34)
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mg_strcmp(i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
