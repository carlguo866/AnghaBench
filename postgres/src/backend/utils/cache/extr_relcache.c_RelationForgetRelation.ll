; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationForgetRelation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationForgetRelation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"relation %u is still open\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RelationForgetRelation(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @RelationIdCacheLookup(i32 %4, i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @PointerIsValid(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %22

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @RelationHasReferenceCountZero(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @elog(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @RelationClearRelation(i32 %20, i32 0)
  br label %22

22:                                               ; preds = %19, %10
  ret void
}

declare dso_local i32 @RelationIdCacheLookup(i32, i32) #1

declare dso_local i32 @PointerIsValid(i32) #1

declare dso_local i32 @RelationHasReferenceCountZero(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationClearRelation(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
