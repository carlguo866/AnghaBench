; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_cant.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_cant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"can't happen: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cant(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [100 x i8], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %5 = call i32 @strcpy(i8* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @strcat(i8* %6, i8* %7)
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %10 = call i32 @rcerror(i8* %9)
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @rcerror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
