; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ndrv.c_name_cmp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ndrv.c_name_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i8*)* @name_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @name_cmp(%struct.ifnet* %0, i8* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @IFNAMSIZ, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  store i8* %12, i8** %5, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = call i32 @ifnet_name(%struct.ifnet* %13)
  %15 = call i32 @strlen(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = call i32 @ifnet_name(%struct.ifnet* %17)
  %19 = load i32, i32* @IFNAMSIZ, align 4
  %20 = call i32 @strlcpy(i8* %16, i32 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %5, align 8
  %25 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %26 = call i32 @ifnet_unit(%struct.ifnet* %25)
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @IFNAMSIZ, align 4
  %29 = sext i32 %28 to i64
  %30 = load i8*, i8** %5, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = ptrtoint i8* %12 to i64
  %33 = sub i64 %31, %32
  %34 = sub nsw i64 %29, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @sprint_d(i32 %26, i8* %27, i32 %35)
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* @IFNAMSIZ, align 4
  %39 = call i32 @strncmp(i8* %12, i8* %37, i32 %38)
  %40 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %40)
  ret i32 %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @ifnet_name(%struct.ifnet*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @sprint_d(i32, i8*, i32) #2

declare dso_local i32 @ifnet_unit(%struct.ifnet*) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
