; ModuleID = '/home/carl/AnghaBench/rufus/src/ms-sys/extr_br.c_is_lilo_br.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ms-sys/extr_br.c_is_lilo_br.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.is_lilo_br.aucRef = private unnamed_addr constant [4 x i8] c"LILO", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_lilo_br(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [4 x i8], align 1
  store i32* %0, i32** %2, align 8
  %4 = bitcast [4 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.is_lilo_br.aucRef, i32 0, i32 0), i64 4, i1 false)
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %7 = call i64 @contains_data(i32* %5, i32 6, i8* %6, i32 4)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %12 = call i64 @contains_data(i32* %10, i32 2, i8* %11, i32 4)
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i1 [ true, %1 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @contains_data(i32*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
