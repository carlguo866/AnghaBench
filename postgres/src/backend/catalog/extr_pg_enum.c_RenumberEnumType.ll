; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_enum.c_RenumberEnumType.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_enum.c_RenumberEnumType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__**, i32)* @RenumberEnumType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RenumberEnumType(i32 %0, %struct.TYPE_9__** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %45, %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %13
  %17 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %17, i64 %19
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = call %struct.TYPE_9__* @heap_copytuple(%struct.TYPE_9__* %21)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %8, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = call i64 @GETSTRUCT(%struct.TYPE_9__* %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %9, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %16
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = call i32 @CatalogTupleUpdate(i32 %37, i32* %39, %struct.TYPE_9__* %40)
  br label %42

42:                                               ; preds = %33, %16
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = call i32 @heap_freetuple(%struct.TYPE_9__* %43)
  br label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %7, align 4
  br label %13

48:                                               ; preds = %13
  %49 = call i32 (...) @CommandCounterIncrement()
  ret void
}

declare dso_local %struct.TYPE_9__* @heap_copytuple(%struct.TYPE_9__*) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_9__*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_9__*) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
