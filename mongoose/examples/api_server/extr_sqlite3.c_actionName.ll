; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_actionName.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_actionName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"SET NULL\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SET DEFAULT\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"CASCADE\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"RESTRICT\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"NO ACTION\00", align 1
@OE_None = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @actionName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @actionName(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %9 [
    i32 128, label %5
    i32 129, label %6
    i32 131, label %7
    i32 130, label %8
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %15

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %15

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %15

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %15

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @OE_None, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  br label %15

15:                                               ; preds = %9, %8, %7, %6, %5
  %16 = load i8*, i8** %3, align 8
  ret i8* %16
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
