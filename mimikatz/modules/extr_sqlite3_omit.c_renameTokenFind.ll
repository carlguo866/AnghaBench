; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_renameTokenFind.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_renameTokenFind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, %struct.TYPE_4__* }
%struct.RenameCtx = type { i32, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.RenameCtx*, i8*)* @renameTokenFind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renameTokenFind(%struct.TYPE_5__* %0, %struct.RenameCtx* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.RenameCtx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__**, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.RenameCtx* %1, %struct.RenameCtx** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.TYPE_4__** %14, %struct.TYPE_4__*** %7, align 8
  br label %15

15:                                               ; preds = %46, %3
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %50

19:                                               ; preds = %15
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %19
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %8, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %32, align 8
  %33 = load %struct.RenameCtx*, %struct.RenameCtx** %5, align 8
  %34 = getelementptr inbounds %struct.RenameCtx, %struct.RenameCtx* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = load %struct.RenameCtx*, %struct.RenameCtx** %5, align 8
  %40 = getelementptr inbounds %struct.RenameCtx, %struct.RenameCtx* %39, i32 0, i32 1
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %40, align 8
  %41 = load %struct.RenameCtx*, %struct.RenameCtx** %5, align 8
  %42 = getelementptr inbounds %struct.RenameCtx, %struct.RenameCtx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  br label %50

45:                                               ; preds = %19
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store %struct.TYPE_4__** %49, %struct.TYPE_4__*** %7, align 8
  br label %15

50:                                               ; preds = %26, %15
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
