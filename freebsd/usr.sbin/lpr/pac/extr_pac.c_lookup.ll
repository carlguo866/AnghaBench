; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/pac/extr_pac.c_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/pac/extr_pac.c_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hent = type { i32, %struct.hent* }

@hashtab = common dso_local global %struct.hent** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hent* (i8*)* @lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hent* @lookup(i8* %0) #0 {
  %2 = alloca %struct.hent*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hent*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @hash(i8* %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.hent**, %struct.hent*** @hashtab, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.hent*, %struct.hent** %8, i64 %10
  %12 = load %struct.hent*, %struct.hent** %11, align 8
  store %struct.hent* %12, %struct.hent** %5, align 8
  br label %13

13:                                               ; preds = %26, %1
  %14 = load %struct.hent*, %struct.hent** %5, align 8
  %15 = icmp ne %struct.hent* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load %struct.hent*, %struct.hent** %5, align 8
  %18 = getelementptr inbounds %struct.hent, %struct.hent* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @strcmp(i32 %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load %struct.hent*, %struct.hent** %5, align 8
  store %struct.hent* %24, %struct.hent** %2, align 8
  br label %31

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.hent*, %struct.hent** %5, align 8
  %28 = getelementptr inbounds %struct.hent, %struct.hent* %27, i32 0, i32 1
  %29 = load %struct.hent*, %struct.hent** %28, align 8
  store %struct.hent* %29, %struct.hent** %5, align 8
  br label %13

30:                                               ; preds = %13
  store %struct.hent* null, %struct.hent** %2, align 8
  br label %31

31:                                               ; preds = %30, %23
  %32 = load %struct.hent*, %struct.hent** %2, align 8
  ret %struct.hent* %32
}

declare dso_local i32 @hash(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
