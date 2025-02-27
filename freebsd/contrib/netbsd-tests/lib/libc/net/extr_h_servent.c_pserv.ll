; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/net/extr_h_servent.c_pserv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/net/extr_h_servent.c_pserv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i8*, i8*, i8**, i64 }

@.str = private unnamed_addr constant [37 x i8] c"name=%s, port=%d, proto=%s, aliases=\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.servent*)* @pserv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pserv(%struct.servent* %0) #0 {
  %2 = alloca %struct.servent*, align 8
  %3 = alloca i8**, align 8
  store %struct.servent* %0, %struct.servent** %2, align 8
  %4 = load %struct.servent*, %struct.servent** %2, align 8
  %5 = getelementptr inbounds %struct.servent, %struct.servent* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = load %struct.servent*, %struct.servent** %2, align 8
  %8 = getelementptr inbounds %struct.servent, %struct.servent* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i32 @ntohs(i32 %10)
  %12 = load %struct.servent*, %struct.servent** %2, align 8
  %13 = getelementptr inbounds %struct.servent, %struct.servent* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %6, i32 %11, i8* %14)
  %16 = load %struct.servent*, %struct.servent** %2, align 8
  %17 = getelementptr inbounds %struct.servent, %struct.servent* %16, i32 0, i32 2
  %18 = load i8**, i8*** %17, align 8
  store i8** %18, i8*** %3, align 8
  br label %19

19:                                               ; preds = %27, %1
  %20 = load i8**, i8*** %3, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i8**, i8*** %3, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %23
  %28 = load i8**, i8*** %3, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %29, i8*** %3, align 8
  br label %19

30:                                               ; preds = %19
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
