; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_make_simple_xml_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_make_simple_xml_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_xml_protect_pcdata = common dso_local global i32 0, align 4
@SVN_VA_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i8*, i8*, i32*)* @make_simple_xml_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_simple_xml_tag(i32** %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32**, i32*** %5, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = load i32, i32* @svn_xml_protect_pcdata, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @SVN_VA_NULL, align 4
  %14 = call i32 @svn_xml_make_open_tag(i32** %9, i32* %10, i32 %11, i8* %12, i32 %13)
  %15 = load i32**, i32*** %5, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @svn_xml_escape_cdata_cstring(i32** %15, i8* %16, i32* %17)
  %19 = load i32**, i32*** %5, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @svn_xml_make_close_tag(i32** %19, i32* %20, i8* %21)
  ret void
}

declare dso_local i32 @svn_xml_make_open_tag(i32**, i32*, i32, i8*, i32) #1

declare dso_local i32 @svn_xml_escape_cdata_cstring(i32**, i8*, i32*) #1

declare dso_local i32 @svn_xml_make_close_tag(i32**, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
