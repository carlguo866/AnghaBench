; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_fpo.c_free_fpo_stream.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_fpo.c_free_fpo_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_fpo_stream(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32* @r_list_iterator(i32 %10)
  store i32* %11, i32** %4, align 8
  br label %12

12:                                               ; preds = %16, %1
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @r_list_iter_next(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @r_list_iter_get(i32* %17)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @free(i32* %20)
  br label %12

22:                                               ; preds = %12
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @r_list_free(i32 %25)
  ret void
}

declare dso_local i32* @r_list_iterator(i32) #1

declare dso_local i64 @r_list_iter_next(i32*) #1

declare dso_local i64 @r_list_iter_get(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @r_list_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
