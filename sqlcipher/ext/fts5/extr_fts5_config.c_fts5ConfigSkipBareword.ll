; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_config.c_fts5ConfigSkipBareword.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_config.c_fts5ConfigSkipBareword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @fts5ConfigSkipBareword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fts5ConfigSkipBareword(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  store i8* %4, i8** %3, align 8
  br label %5

5:                                                ; preds = %10, %1
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = call i64 @sqlite3Fts5IsBareword(i8 signext %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %3, align 8
  br label %5

13:                                               ; preds = %5
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* null, i8** %3, align 8
  br label %18

18:                                               ; preds = %17, %13
  %19 = load i8*, i8** %3, align 8
  ret i8* %19
}

declare dso_local i64 @sqlite3Fts5IsBareword(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
