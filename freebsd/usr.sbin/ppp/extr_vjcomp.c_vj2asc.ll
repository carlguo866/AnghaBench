; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_vjcomp.c_vj2asc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_vjcomp.c_vj2asc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vj2asc.asc = internal global [50 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [36 x i8] c"%d VJ slots with%s slot compression\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"VJ disabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vj2asc(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, 8
  %8 = and i32 %7, 15
  %9 = add nsw i32 %8, 1
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 @snprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @vj2asc.asc, i64 0, i64 0), i32 50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %9, i8* %14)
  br label %18

16:                                               ; preds = %1
  %17 = call i32 @strcpy(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @vj2asc.asc, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %5
  ret i8* getelementptr inbounds ([50 x i8], [50 x i8]* @vj2asc.asc, i64 0, i64 0)
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
