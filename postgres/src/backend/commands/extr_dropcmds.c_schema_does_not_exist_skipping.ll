; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_dropcmds.c_schema_does_not_exist_skipping.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_dropcmds.c_schema_does_not_exist_skipping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [37 x i8] c"schema \22%s\22 does not exist, skipping\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i8**)* @schema_does_not_exist_skipping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schema_does_not_exist_skipping(i32* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call %struct.TYPE_3__* @makeRangeVarFromNameList(i32* %9)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %8, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @LookupNamespaceNoError(i8* %18)
  %20 = call i32 @OidIsValid(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = call i8* @gettext_noop(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %24 = load i8**, i8*** %6, align 8
  store i8* %23, i8** %24, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8**, i8*** %7, align 8
  store i8* %27, i8** %28, align 8
  store i32 1, i32* %4, align 4
  br label %30

29:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %22
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.TYPE_3__* @makeRangeVarFromNameList(i32*) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @LookupNamespaceNoError(i8*) #1

declare dso_local i8* @gettext_noop(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
